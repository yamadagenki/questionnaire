class AnswersController < ApplicationController
  def new
    @answer = Answer.new
    Question.all.each do |q|
      @answer.answer_items.build(question_id: q.id)
    end
  end

  def create
    @answer = Answer.create(update_params)
    return render :new unless @answer.save
  end

  private

  def update_params
    params.require(:answer).permit(:name, answer_items_attributes: %i[question_id rate])
  end
end
