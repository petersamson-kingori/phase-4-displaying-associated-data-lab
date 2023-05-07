class ItemsController < ApplicationController
    def index
        items = Item.all.includes(:user)
        render json: items.map { |item| item.as_json(include: :user) }
      end
end
