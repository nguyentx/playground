class DoctorsController < ApplicationController
	def new
		@doctor = Doctor.new
	end

	def show
		@doctor = Doctor.find params[:id]
	end

	def create
		@doctor = Doctor.new( params[:doctor])
		if @doctor.save
			flash[:success] = "Doctor saved!"
			email = UserMailer.send_feedback( @doctor ).deliver
		else
			flash[:error] = "Could not save doctor!"
		end
		redirect_to :back
	end

	def update
		@doctor = Doctor.find( params[:id])
		if @doctor.update_attributes( params[:doctor])
			flash[:success] = "Doctor updated!"
		else
			flash[:error] = "Could not save doctor!"
		end

	end

	def delete
		@doctor = Doctor.find( params[:id])
		if @doctor.delete
			flash[:success] = "Doctor deleted!"
		else
			flash[:error] = "Could not delete doctor!"
		end

	end
 
end