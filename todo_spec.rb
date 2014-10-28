require 'rspec'
require_relative 'todo'

describe Task do
  let(:task) { Task.new("Sample title", "sample description") }

  it 'should have a title' do
    expect(task.title).to eq("Sample title")
  end

  it 'should have a description' do
    expect(task.description).to eq("sample description")
  end

  it 'should have a status defaulted to "incomplete"' do
    expect(task.status).to eq("incomplete")
  end

  it 'should have a timestamp' do
    expect(task.timestamp).to be_a(Date)
  end

  describe "#mark_as_complete!" do
    it 'should mark a task as complete' do
      task.mark_as_complete!
      expect(task.status).to eq("complete")
    end
  end

  describe "#mark_as_incomplete!" do
    it 'should mark a task as incomplete' do
      task.mark_as_incomplete!
      expect(task.status).to eq("incomplete")
    end
  end

  describe "#complete?" do
    it 'should return a boolean to represent status of the task' do
      task.mark_as_complete!
      expect(task.complete?).to eq(true)
      task.mark_as_incomplete!
      expect(task.complete?).to eq(false)
    end
  end
end

describe TodoList do
  let(:todo_list) { TodoList.new("Sample title") }

  it 'should have a title' do
    expect(todo_list.title).to eq("Sample title")
  end

  it 'should initialze with no tasks' do
    expect(todo_list.tasks).to eq([])
  end
end

