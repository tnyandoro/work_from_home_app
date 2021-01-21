class TransactionsController < ApplicationController
  before_action :authenticate_user!

  # GET /transactions
  # GET /transactions.json
  def index
<<<<<<< HEAD
    if params[:view]
      @trana = Transaction.with_group(current_user.id).ordered_by_most_recent
      render 'page1'
    else
      @tranb = Transaction.without_group(current_user.id).ordered_by_most_recent
      render 'page2'

    end
=======
    # @transactions = Transaction.all
    if params[:view]
>>>>>>> 9dcb1cde127e6a10a9f6192938aa897aa92f8196
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

  # PATCH/PUT /transactions/1
  # PATCH/PUT /transactions/1.json
  def update
    @transaction = Transaction.find(params[:id])
    @transaction.update(transaction_param)
    redirect_to transaction_path(@transaction)
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    flash[:notice] = 'Transaction successfully Deleted'
    redirect_to root_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  private

  # Only allow a list of trusted parameters through.
  def transaction_params
    params.require(:transaction).permit(:name, :amount, :group_id)
  end
end
