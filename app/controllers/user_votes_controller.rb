class UserVotesController < ApplicationController
	before_action :authenticate_user , except: [:index, :show]

	def create
		@vote = current_user.votes.new(vote_params)

		respond_to do |format|
			if @vote.save
				format.html { redirect_to @vote, notice: "Your Vote was added!"}
				format.json { render action: "show", status: :created, location: @vote}
			else
				format.html { render action: "new" }
				format.json { render json: @vote.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		respond_to do |format|
			if @vote.update(vote_update_params)
				format.html { redirect_to @vote, notice: "Your vote updated or was expedited" }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @vote.errors, status: :unprocessable_entity }
			end
		end
	end

	private

		def vote_params
			params.require(:user_vote).permit(:cause_id,:donation_amount)
		end


		def vote_update_params
			params.require(:user_vote).permit(:cause_id)
		end
end
