class InvestmentRecommendationsController < ApplicationController
  before_action :authenticate_user!, except: %i[:index, :show]
  before_action :set_investment_recommendation, only: [:show, :edit, :update, :destroy]

  # GET /investment_recommendations
  # GET /investment_recommendations.json
  def index
    @investment_recommendations = InvestmentRecommendation.all
  end

  # GET /investment_recommendations/1
  # GET /investment_recommendations/1.json
  def show
  end

  # GET /investment_recommendations/new
  def new
    @investment_recommendation = InvestmentRecommendation.new
  end

  # GET /investment_recommendations/1/edit
  def edit
  end

  # POST /investment_recommendations
  # POST /investment_recommendations.json
  def create
    @investment_recommendation = InvestmentRecommendation.new(investment_recommendation_params)
    @investment_recommendation.user = current_user

    respond_to do |format|
      if @investment_recommendation.save
        format.html { redirect_to @investment_recommendation, notice: 'Investment recommendation was successfully created.' }
        format.json { render :show, status: :created, location: @investment_recommendation }
      else
        format.html { render :new }
        format.json { render json: @investment_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investment_recommendations/1
  # PATCH/PUT /investment_recommendations/1.json
  def update
    respond_to do |format|
      if @investment_recommendation.update(investment_recommendation_params)
        format.html { redirect_to @investment_recommendation, notice: 'Investment recommendation was successfully updated.' }
        format.json { render :show, status: :ok, location: @investment_recommendation }
      else
        format.html { render :edit }
        format.json { render json: @investment_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investment_recommendations/1
  # DELETE /investment_recommendations/1.json
  def destroy
    @investment_recommendation.destroy
    respond_to do |format|
      format.html { redirect_to investment_recommendations_url, notice: 'Investment recommendation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investment_recommendation
      @investment_recommendation = InvestmentRecommendation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investment_recommendation_params
      params.require(:investment_recommendation).permit(:private, :user_id, :tkrsymbol, :body)
    end
end
