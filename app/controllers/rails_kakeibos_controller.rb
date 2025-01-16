class RailsKakeibosController < ApplicationController
  before_action :set_rails_kakeibo, only: [:show, :edit, :update, :destroy]

  def index
    @rails_kakeibos = RailsKakeibo.all
  end

  def new
  end

  def create
    @rails_kakeibo = RailsKakeibo.new(rails_kakeibo_params)
    @rails_kakeibo.gougin_money = @rails_kakeibo.gougin_money.to_i + @rails_kakeibo.gougin_salary.to_i
                                - @rails_kakeibo.rent.to_i - @rails_kakeibo.sbi_stock.to_i - @rails_kakeibo.jcb_card.to_i
                                - @rails_kakeibo.gasoline.to_i - @rails_kakeibo.cash.to_i - @rails_kakeibo.others.to_i
    @rails_kakeibo.rakuten_money = @rails_kakeibo.rakuten_money.to_i + @rails_kakeibo.rakuten_salary.to_i
                                - @rails_kakeibo.ideco_stock.to_i - @rails_kakeibo.rakuten_card.to_i - @rails_kakeibo.nisa_stock.to_i
    if @rails_kakeibo.save
      redirect_to rails_kakeibos_path, notice: "更新に成功しました！"
    else
      flash.now[:alert] = "更新に失敗しました（泣）"
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update
    @rails_kakeibo.gougin_money = @rails_kakeibo.gougin_money.to_i + @rails_kakeibo.gougin_salary.to_i
                                - @rails_kakeibo.rent.to_i - @rails_kakeibo.sbi_stock.to_i - @rails_kakeibo.jcb_card.to_i
                                - @rails_kakeibo.gasoline.to_i - @rails_kakeibo.cash.to_i - @rails_kakeibo.others.to_i
    @rails_kakeibo.rakuten_money = @rails_kakeibo.rakuten_money.to_i + @rails_kakeibo.rakuten_salary.to_i
                                - @rails_kakeibo.ideco_stock.to_i - @rails_kakeibo.rakuten_card.to_i - @rails_kakeibo.nisa_stock.to_i
    if @rails_kakeibo.update(rails_kakeibo_params)
      redirect_to rails_kakeibos_path, notice: '更新したよ'
    else
      render :edit
    end
  end

  ##削除の機能いらない？
  def destroy
    @rails_kakeibo.destroy
    redirect_to rails_kakeibos_path_path, notice: '削除した'
  end

  private

  def set_rails_kakeibo
  @rails_kakeibo = RailsKakeibo.find(params[:id])
  end
end
