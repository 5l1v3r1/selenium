# frozen_string_literal: true

# Licensed to the Software Freedom Conservancy (SFC) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The SFC licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

module Selenium
  module WebDriver
    class DevTools
      class Memory

        def initialize(devtools)
          @devtools = devtools
        end

        def get_domcounters
          @devtools.send('Memory.getDOMCounters')
        end

        def prepare_for_leak_detection
          @devtools.send('Memory.prepareForLeakDetection')
        end

        def forcibly_purge_java_script_memory
          @devtools.send('Memory.forciblyPurgeJavaScriptMemory')
        end

        def set_pressure_notifications_suppressed(suppressed:)
          @devtools.send('Memory.setPressureNotificationsSuppressed',
                         suppressed: suppressed)
        end

        def simulate_pressure_notification(level:)
          @devtools.send('Memory.simulatePressureNotification',
                         level: level)
        end

        def start_sampling(sampling_interval:, suppress_randomness:)
          @devtools.send('Memory.startSampling',
                         samplingInterval: sampling_interval,
                         suppressRandomness: suppress_randomness)
        end

        def stop_sampling
          @devtools.send('Memory.stopSampling')
        end

        def get_all_time_sampling_profile
          @devtools.send('Memory.getAllTimeSamplingProfile')
        end

        def get_browser_sampling_profile
          @devtools.send('Memory.getBrowserSamplingProfile')
        end

        def get_sampling_profile
          @devtools.send('Memory.getSamplingProfile')
        end

      end # Memory
    end # DevTools
  end # WebDriver
end #Selenium
