class QuestionsController < ApplicationController
  before_action :get_question, only: [:show, :edit, :update]

  def index
    @questions = Question.all.order('created_at DESC')

    render :json => @questions
  end

  def create
    @question = Question.new(questions_params)

    if @question.save
      return_question
    else
      return_errors
    end
  end

  def show
    return_question
  end

  def edit
    return_question
  end

  def update
    if @question.update(params[:post].permit(:question, :answer_mode, :category))
      return_question
    else
      return_errors
    end
  end

  private
    def get_question
      @question = Question.find(params[:id])
    end

    def return_question
      render :json => @question
    end

    def return_errors
      render :json => @question.errors
    end

    def question_params
      params.require(:questions).permit(:question, :answer_mode, :category)
    end
end
