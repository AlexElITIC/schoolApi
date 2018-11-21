class LectureRulesController < ApplicationController
  before_action :set_lecture_rule, only: [:show, :update, :destroy]

  # GET /lecture_rules
  def index
    @lecture_rules = LectureRule.all

    render json: {lecture_rules: @lecture_rules}
  end

  # GET /lecture_rules/1
  def show
    render json: {lecture_rule: @lecture_rule}
  end

  # POST /lecture_rules
  def create
    @lecture_rule = LectureRule.new(lecture_rule_params)

    if @lecture_rule.save
      render json: {lecture_rule: @lecture_rule}, status: :created, location: @lecture_rule
    else
      render json: @lecture_rule.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lecture_rules/1
  def update
    if @lecture_rule.update(lecture_rule_params)
      render json: {lecture_rule: @lecture_rule}
    else
      render json: @lecture_rule.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lecture_rules/1
  def destroy
    @lecture_rule.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecture_rule
      @lecture_rule = LectureRule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lecture_rule_params
      params.require(:lecture_rule).permit(:description)
    end
end
