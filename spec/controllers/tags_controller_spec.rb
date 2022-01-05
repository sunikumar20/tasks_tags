require 'rails_helper'

RSpec.describe TagsController, type: :controller do
	describe "POST create" do
    let(:tags_tasks) { create(:tags_tasks) }
    let(:tags_tasks2) { create(:tags_tasks) }
    let(:tags_tasks3) { create(:tags_tasks) }

    describe "get popular tags" do
      it "Get list" do
        get :index
        expect(response.status).to eq 200
      end
    end
  end
end
