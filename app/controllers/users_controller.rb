class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        items = user.items
        render json: {
          id: user.id,
          username: user.username,
          city: user.city,
          items: items.as_json(only: [:id, :name, :description, :price])
        }
      end
end
