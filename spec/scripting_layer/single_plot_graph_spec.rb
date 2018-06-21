require 'spec_helper'

describe Rubyplot::Rbplot do
  before do
    @x1 = [1, 2, 3, 4, 5]
    @y1 = [10, 20, 30, 40, 50]
  end

  context '#line' do
    it 'creates a simple line graph' do
      a = Rubyplot::Rbplot.new
      a.line @x1, @y1
      a.save 'file_name.bmp'

      expect(equal_files('file_name.bmp', 'line_graph.bmp')).to eq(true)
    end

    it 'creates a line graph with points marked' do
      a = Rubyplot::Rbplot.new
      a.line @x1, @y1, points: true
      a.save 'file_name.bmp'

      expect(equal_files('file_name.bmp', 'line_points_graph.bmp')).to eq(true)
    end
  end

  context '#scatter' do
    it 'creates a simple scatter graph' do
      a = Rubyplot::Rbplot.new
      a.scatter @x1, @y1
      a.save 'file_name.bmp'

      expect(equal_files('file_name.bmp', 'scatter_graph.bmp')).to eq(true)
    end
  end
end
