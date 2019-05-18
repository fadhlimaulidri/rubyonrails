# frozen_string_literal: true
require 'pry'
class V1::AndroiddevicesController < ApplicationController
  def index
    ad = AndroidDevice.all
    render json: ad, status: :ok
  end

  def create
    ad = AndroidDevice.new(androiddevice_params)
    if ad.save
      render json: ad, status: :created
    else
      render json: { errors: ad.errors }, status: :unprocessable_entity
    end
  end

  def show
    ad = AndroidDevice.find(params[:id])
    render json: ad, status: :ok
  end

  def update
    ad = AndroidDevice.find(params[:id])
    if ad.update(androiddevice_params)
      render json: ad, status: :ok
    else
      render json: { errors: ad.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    ad = AndroidDevice.find(params[:id])
    ad.destroy
    head 204
  end

  private
  def androiddevice_params
    params.require(:androiddevice).permit(:model, :manufacture, :product_name, :reg_id, :user_id, :logged_id, :apps_version, :player_id, :created_at, :updated_at)
  end
end