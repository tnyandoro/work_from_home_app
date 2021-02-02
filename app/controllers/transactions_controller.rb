class TransactionsController < ApplicationController
  before_action :authenticate_user!

  # GET /transactions
  # GET /transactions.json
  def index
    if params[:view]
      @trana = Transaction.with_group(current_user.id).includes(:group).ordered_by_most_recent
      render 'page1'
    else
      @tranb = Transaction.without_group(current_user.id).ordered_by_most_recent
      render 'page2'
    end
  end

  # GET /transactions/1
  # GET /transactions/1.json
  def show
    @transaction = Transaction.find(params[:id])
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
  end

  # GET /transactions/1/edit
  def edit
    @transaction = Transaction.find(params[:id])
  end

  # POST /transactions
  # POST /transactions.json
  def create
    @transaction = current_user.transactions.build(transaction_params)
    if @transaction.save
      redirect_to root_path, notice: 'New transaction was successfully created.'
    else
      render :new
    end
  end

  def update
    @transaction = Transaction.find(params[:id])
    @transaction.update(transaction_param)
    redirect_to transaction_path(@transaction)
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    flash[:notice] = 'Transaction successfully Deleted'
    redirect_to root_path
  end

  private

  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :group_id)
  end
end
