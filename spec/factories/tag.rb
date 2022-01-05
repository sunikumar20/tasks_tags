FactoryGirl.define do
  factory :tag do |f|
  f.name {|i| "tag #{i}"}

  factory :tags_tasks, parent: :task do
      after_create do |tag|
        tag.tasks << FactoryGirl.create_list(:task, 3)
      end
    end
  end
end