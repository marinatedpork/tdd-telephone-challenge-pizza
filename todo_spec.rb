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
end

