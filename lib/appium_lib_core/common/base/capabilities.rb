# frozen_string_literal: true

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Appium
  module Core
    class Base
      module Capabilities
        # @private
        # @param [Hash] opts_caps Capabilities for Appium server. All capability keys are converted to lowerCamelCase when
        #                         this client sends capabilities to Appium server as JSON format.
        # @return [::Selenium::WebDriver::Remote::Capabilities] Return instance of Appium::Core::Base::Capabilities
        #                         inherited ::Selenium::WebDriver::Remote::Capabilities
        def self.create_capabilities(opts_caps = {})
          # TODO: Move to 'Options' way instead of 'Capabilities'.
          # Selenium 5 will have Options instead of 'Capabilities'.
          # https://github.com/SeleniumHQ/selenium/blob/trunk/rb/lib/selenium/webdriver/common/options.rb
          # Then, Ruby client also shoud move to the Options way.
          # Appium's capabilities could change by depending on Appium versions. So it does not have
          # standard options like chrome and firefox etc. So, the implementation should differ from
          # other browsers. But here should inherit `Options` to follow Selenium.
          ::Selenium::WebDriver::Remote::Capabilities.new(opts_caps)
        end
      end
    end
  end
end
