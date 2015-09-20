class FamilymembersController < ApplicationController


	def new
		@familymember = Familymember.new
	end

	def create
		@familymember= Familymember.new(familymember_params)
		if   @familymember.save
			redirect_to "/familymembers/#{@familymember.id}", notice:  "Record created successfully."
		else
			render:template=> "/familymembers/new"
		end
	end

	def show
		@familymember = Familymember.find(params[:id])
	end


	def edit
		@familymember = Familymember.find(params[:id])
	end


	def update
		@familymember= Familymember.find(params[:id])
		if
			@familymember.update(familymember_params)
			redirect_to "/familymembers/#{@familymember.id}", notice:"Record updated successfully."
		else
			render:template=>"/familymembers/edit"
		end
	end


	def index
		@familymember  = Familymember.all
	end 

	def destroy
		@familymember =Familymember.find(params[:id])
		@familymember.destroy
		flash[:notice] = "Record deleted successfully."
		redirect_to "/familymembers"
	end


	def familymember_params
		 params.require(:familymember).permit(:name, :gender, :birth_date, :age, :description)
	end


end
