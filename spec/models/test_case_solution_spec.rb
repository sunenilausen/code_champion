require 'rails_helper'

RSpec.describe TestCaseSolution, type: :model do
  let(:test_case_solution) { create :test_case_solution }

  describe "#run_test" do
    context 'when server is available' do
      let!(:eval_server) { create :eval_server }
      it 'passes a test when result matches expected output' do
        test_case_solution.solution.update(code: "input[0] + input[1]")
        test_case_solution.run_test
        expect(test_case_solution.passing?).to be_truthy
      end

      it 'fails a test when result does not match expected output' do
        test_case_solution.run_test
        expect(test_case_solution.failing?).to be_truthy
      end
    end

    it 'sets status to server_unavailable when no server with lanugage' do
      test_case_solution.run_test
      expect(test_case_solution.server_unavailable?).to be_truthy
    end
  end
end
