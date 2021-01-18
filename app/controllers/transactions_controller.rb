class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  # GET /transactions
  # GET /transactions.json
  def index
    if params[:view]
      @trana = Transaction.with_group(cureent_user.id).order_by_most_recent
      render 'page_A'
    else
      @tranb = Transaction.with_group(cureent_user.id).order_by_most_recent
      render 'page_B'

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
    @transaction = Transaction.new(transaction_param)
    @transaction.user_id = current_user.id
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
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
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
