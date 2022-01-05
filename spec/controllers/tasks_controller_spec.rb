require 'rails_helper'

RSpec.describe TasksController, type: :controller do
	describe "POST create" do
		let(:tag) { create(:tag) }
    describe "with valid params" do
      it "create a new Task" do
        post :create, task: { title: 'task1', tag_ids: [tag.id]}
        expect(response.status).to eq 201
      end

      it "update Task" do
      	task = create(:task)
        put :update, id: task, task: {title: 'task2'}
        expect(JSON.parse(response.body)['title']).to_not eq task.title
        expect(JSON.parse(response.body)['title']).to eq 'task2'
      end

      it "destroy Task" do
      	task = create(:task)
        delete :destroy, id: task
        expect(response.status).to eq 200
      end
    end
  end
end
