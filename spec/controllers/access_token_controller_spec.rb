require 'rails_helper'

RSpec.describe AccessTokenController, type: :controller do
  describe '#create' do
    shared_examples_for "unauthorize_requests" do
      let(:error) do
        {
          'status'=> '401',
          'source'=> { 'pointer' => '/code' },
          'title'=> 'Authentication code is invalid',
          'detail'=> 'You must provide valid code in order to exchange it for token'
        }
      end
      it "should return 401 status code" do
        subject
        expect(response).to have_http_status(401)
      end

      it "should return proper error body" do
        subject
        # binding.pry
        expect(json['errors']).to include(error)
      end
    end

    context 'when no code provided' do
      subject {post :create}
      it_behaves_like "unauthorize_requests"
    end

    context 'when invalid code provided' do
      let(:github_error) {
        double("Sawyer::Resource", error: "bad_verification_code")
      }

      before do
        allow_any_instance_of(Octokit::Client).to receive(:exchange_code_for_token).and_return(error)
      end
      subject {post :create, params: { code: 'invalid_code'}}
      it_behaves_like "unauthorize_requests"
    end

    context 'when success request' do
      let(:user_data) do
        {
            login: 'fadhli1',
            url: 'http://example.com',
            avatar_url: 'http://example.com/avatar',
            name: 'Fadhli Maulidri'
        }
      end
      before do
        allow_any_instance_of(Octokit::Client).to receive(:exchange_code_for_token).and_return('validaccesstoken')
        allow_any_instance_of(Octokit::Client).to receive(:user).and_return(user_data)
      end

      subject { post :create, params: { code: 'valid_code'}}
      it "should retur 201 status code" do
        subject
        expect(response).to have_http_status(:create)
      end
    end
  end
end