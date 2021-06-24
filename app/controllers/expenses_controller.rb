class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :update, :destroy]

  # GET /expenses
  # sample output
  # {
  #       "expense": {
  #           "id": 1,
  #           "expenseDate": "2021-06-24T00:48:49.259Z",
  #           "Description": "I am going to shopping",
  #           "created_at": "2021-06-24T00:48:49.262Z",
  #           "updated_at": "2021-06-24T00:48:49.262Z",
  #           "category_id": 1,
  #           "user_id": 1
  #       },
  #       "category": {
  #           "id": 1,
  #           "name": "Shopping",
  #           "created_at": "2021-06-23T22:58:45.229Z",
  #           "updated_at": "2021-06-23T22:58:45.229Z"
  #       },
  #       "user": {
  #           "id": 1,
  #           "name": "ajay",
  #           "email": "ajay@gmail.com",
  #           "created_at": "2021-06-24T00:45:51.700Z",
  #           "updated_at": "2021-06-24T00:45:51.700Z"
  #       }
  #   },
  def index
    @expenses = Expense.all
    op = []
    @expenses.each do |expense|

      temp = 
      {
        'expense' => expense,
        'category' => expense.category,
        'user' => expense.user
    }
      op.push(temp)
    end
    render json: op.to_json
    # render json: @expenses
  end

  # GET /expenses/1
  def show
    # render json: @expense
    # temp = Expense.includes(:category, :user).where(:id=> @expense.id).to_json
    temp= {
      'expense' => @expense,
      'category' => @expense.category,
      'user' => @expense.user
    }
    render json: temp
  end

  # POST /expenses
  def create
    binding.pry
    @expense = Expense.new(expense_params)

    if @expense.save
      render json: @expense, status: :created, location: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expenses/1
  def update
    if @expense.update(expense_params)
      render json: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expenses/1
  def destroy
    @expense.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expense_params
      params.require(:expense).permit(:expenseDate, :Description, :category_id, :user_id)
    end
end
