class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:view]
      @trana = Transaction.with_group(current_user.id).includes(:group).ordered_by_most_recent
      render 'page1'
    else
      @tranb = Transaction.without_group(current_user.id).ordered_by_most_recent
      render 'page2'
    end
  end

  def new
    @transaction = Transaction.new
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def create
    @transaction = Transaction.new(transaction_param)
    @transaction.author_id = current_user.id
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
    flash[:notice] = 'Transaction has been deleted'
    redirect_to root_path
  end

  private

  def transaction_param
    params.require(:transaction).permit(:name, :amount, :group_id)
  end
end
