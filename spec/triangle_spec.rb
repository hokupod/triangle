require 'rspec'
require './triangle'

describe Triangle do
  describe '#shape' do
    subject { triangle.shape }
    let(:triangle) { Triangle.new *sides }
    context 'Unequal triangles' do
      let(:sides) { [2, 3, 4] }
      it { is_expected.to eq '不等辺三角形ですね！' }
    end
    context 'Isosceles triangles' do
      let(:sides) { [2, 2, 1] }
      it { is_expected.to eq '二等辺三角形ですね！' }
    end
    context 'Regular triangle' do
      let(:sides) { [1, 1, 1] }
      it { is_expected.to eq '正三角形ですね！' }
    end
    context 'Not a triangle' do
      let(:sides) { [1, 2, 3] }
      it { is_expected.to eq '三角形じゃないです＞＜' }
    end
  end
end
