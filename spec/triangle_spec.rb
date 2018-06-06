require 'rspec'
require './triangle'

describe Triangle do
  describe '#shape' do
    subject { triangle.shape }
    let(:triangle) { Triangle.new *sides }

    describe '不等辺三角形' do
      context '3辺それぞれが違う値' do
        context '2辺を足した値よりその他の1辺の値が大きい' do
          let(:sides) { [2, 3, 6] }
          it { is_expected.not_to eq '不等辺三角形ですね！' }
        end
        context '2辺を足した値とその他の1辺の値が一致する' do
          let(:sides) { [2, 3, 5] }
          it { is_expected.not_to eq '不等辺三角形ですね！' }
        end
        context '2辺を足した値よりその他の1辺の値が小さい' do
          let(:sides) { [2, 3, 4] }
          it { is_expected.to eq '不等辺三角形ですね！' }
        end
      end
      context '3辺それぞれが違う値ではない' do
        context '2辺を足した値よりその他の1辺の値が大きい' do
          let(:sides) { [3, 3, 8] }
          it { is_expected.not_to eq '不等辺三角形ですね！' }
        end
        context '2辺を足した値とその他の1辺の値が一致する' do
          let(:sides) { [3, 3, 6] }
          it { is_expected.not_to eq '不等辺三角形ですね！' }
        end
        context '2辺を足した値よりその他の1辺の値が小さい' do
          let(:sides) { [3, 3, 4] }
          it { is_expected.not_to eq '不等辺三角形ですね！' }
        end
      end
    end

    describe '二等辺三角形' do
      context '2辺だけが同じ値' do
        context '同じ長さの2辺を足した値よりその他の1辺の値が大きい' do
          let(:sides) { [2, 2, 5] }
          it { is_expected.not_to eq '二等辺三角形ですね！' }
        end
        context '同じ長さの2辺を足した値とその他の1辺の値が一致する' do
          let(:sides) { [2, 2, 4] }
          it { is_expected.not_to eq '二等辺三角形ですね！' }
        end
        context '同じ長さの2辺を足した値よりその他の1辺の値が小さい' do
          let(:sides) { [2, 2, 1] }
          it { is_expected.to eq '二等辺三角形ですね！' }
        end
      end
      context '2辺だけが同じ値ではない' do
        context '同じ長さの2辺を足した値よりその他の1辺の値が大きい' # 表現不可能
        context '同じ長さの2辺を足した値とその他の1辺の値が一致する' # 表現不可能
        context '同じ長さの2辺を足した値よりその他の1辺の値が小さい' do
          let(:sides) { [5, 5, 5] }
          it { is_expected.not_to eq '二等辺三角形ですね！' }
        end
      end
    end

    describe '正三角形' do
      context '3辺が同じ値' do
        let(:sides) { [1, 1, 1] }
        it { is_expected.to eq '正三角形ですね！' }
      end
      context '3辺が同じ値ではない' do
        let(:sides) { [2, 1, 1] }
        it { is_expected.not_to eq '正三角形ですね！' }
      end
    end

    describe '三角形ではない' do
      context '2辺を足した値よりその他の1辺の値が大きい' do
        let(:sides) { [1, 2, 4] }
        it { is_expected.to eq '三角形じゃないです＞＜' }
      end
      context '2辺を足した値とその他の1辺の値が一致する' do
        let(:sides) { [1, 2, 3] }
        it { is_expected.to eq '三角形じゃないです＞＜' }
      end
      context '2辺を足した値よりその他の1辺の値が小さい' do
        let(:sides) { [1, 3, 3] }
        it { is_expected.not_to eq '三角形じゃないです＞＜' }
      end
    end
  end
end
