class PlantsController < ApplicationController
  def index
    plants= Plant.all
    render json: plants, except:[:created_at ,:updated_at],status: :ok
  end
def show
  plant = Plant.find_by(id: params[:id])
  render json: plant , except:[:created_at, :updated_at],status: :ok
end
def create
  plant=Plant.create(plants_param)
  render json: plant,status: :created
end

private
def plants_param
params.permit(:name,:image,:price)

end
end
