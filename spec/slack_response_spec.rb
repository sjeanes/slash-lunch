require './spec/spec_helper'

describe SlackResponse do
  describe '::ephemaral' do
    before do
      @response = SlackResponse.ephemaral('Test response')
    end

    it 'contains the given text' do
      @response.text.must_equal 'Test response'
    end

    it 'is not in channel' do
      @response.in_channel.must_equal false
    end
  end

  describe '::in_channel' do
    before do
      @response = SlackResponse.in_channel('Test response')
    end

    it 'contains the given text' do
      @response.text.must_equal 'Test response'
    end

    it 'is in channel' do
      @response.in_channel.must_equal true
    end
  end

  describe '#response' do
    describe 'when ephemaral' do
      before do
        @response = SlackResponse.ephemaral('Test response').response
      end

      it 'contains the given text' do
        @response[:text].must_equal 'Test response'
      end

      it 'does not contain a response type' do
        @response[:response_type].must_be_nil
      end
    end

    describe 'when in channel' do
      before do
        @response = SlackResponse.in_channel('Test response').response
      end

      it 'contains the given text' do
        @response[:text].must_equal 'Test response'
      end

      it 'has in_channel as the response type' do
        @response[:response_type].must_equal 'in_channel'
      end
    end
  end

  describe '#to_json' do
    describe 'when ephemaral' do
      it 'is a json representation of the response' do
        json = SlackResponse.ephemaral('Test response').to_json
        json.must_equal({text: 'Test response'}.to_json)
      end
    end

    describe 'when in channel' do
      it 'is a json representation of the response' do
        json = SlackResponse.in_channel('Test response').to_json
        json.must_equal({text: 'Test response', response_type: 'in_channel'}.to_json)
      end
    end
  end
end
