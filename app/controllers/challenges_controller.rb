class ChallengesController < ApplicationController
  before_action :get_challenge, only: [:show, :edit, :update]

  def index
    @challenges = Challenge.all.order('created_at DESC')

    render :json => @challenges
  end

  def create
    @challenge = Challenge.new(challenge_params)

    if @challenge.save
      return_challenge
    else
      return_errors
    end
  end

  def show
    return_challenge
  end

  def edit
    return_challenge
  end

  def update
    if @challenge.update(params[:post].permit(:title, :description, :duration))
      return_challenge
    else
      return_errors
    end
  end

  private
    def get_challenge
      @challenge = Challenge.find(params[:id])
    end

    def return_challenge
      render :json => @challenge
    end

    def return_errors
      render :json => @challenge.errors
    end

    def challenge_params
      params.permit(:title, :description, :duration)
    end
end
