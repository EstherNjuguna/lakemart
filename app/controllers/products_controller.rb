class ProductsController < ApplicationController
    skip_before_action  only: [:create]

      def index

          # render json: Cohort.all , status: :ok
      end
  
    def create
        product= Product.create!(product_params)
        if product
        render json: product
        else
            render json:{ "errors": ["validation errors"]}
        end
    end
    def show
      product = Product.find_by(id: params[:id])
  
      render json: product, status: :ok
    end
  
    def trending
      search = Search.find_by(id: params[:search_id])
  
      render json: search.products
    end
  
    def toptrends
      render json: Search.all.order_by_count.limit(1).first.products
    end
    private
    def product_params
        params.permit(:product_name, :product_description, :product_category, :price)
    end
  end
  
  