require_relative 'todo'

describe Task do
  let(:task) { Task.new("Sample title", "sample description", "incomplete", "10/28/14") }

  it 'should have a title' do
    expect(task.title).to eq("Sample title")
    expect(task.description).to eq("sample description")
    expect(task.status).to eq("incomplete")
    expect(task.timestamp).to eq("10/28/14")
  end
end
