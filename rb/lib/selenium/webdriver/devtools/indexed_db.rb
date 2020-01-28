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
      class IndexedDB

        def initialize(devtools)
          @devtools = devtools
        end

        def clear_object_store(security_origin:, database_name:, object_store_name:)
          @devtools.send('IndexedDB.clearObjectStore',
                         securityOrigin: security_origin,
                         databaseName: database_name,
                         objectStoreName: object_store_name)
        end

        def delete_database(security_origin:, database_name:)
          @devtools.send('IndexedDB.deleteDatabase',
                         securityOrigin: security_origin,
                         databaseName: database_name)
        end

        def delete_object_store_entries(security_origin:, database_name:, object_store_name:, key_range:)
          @devtools.send('IndexedDB.deleteObjectStoreEntries',
                         securityOrigin: security_origin,
                         databaseName: database_name,
                         objectStoreName: object_store_name,
                         keyRange: key_range)
        end

        def disable
          @devtools.send('IndexedDB.disable')
        end

        def enable
          @devtools.send('IndexedDB.enable')
        end

        def request_data(security_origin:, database_name:, object_store_name:, index_name:, skip_count:, page_size:, key_range:)
          @devtools.send('IndexedDB.requestData',
                         securityOrigin: security_origin,
                         databaseName: database_name,
                         objectStoreName: object_store_name,
                         indexName: index_name,
                         skipCount: skip_count,
                         pageSize: page_size,
                         keyRange: key_range)
        end

        def get_metadata(security_origin:, database_name:, object_store_name:)
          @devtools.send('IndexedDB.getMetadata',
                         securityOrigin: security_origin,
                         databaseName: database_name,
                         objectStoreName: object_store_name)
        end

        def request_database(security_origin:, database_name:)
          @devtools.send('IndexedDB.requestDatabase',
                         securityOrigin: security_origin,
                         databaseName: database_name)
        end

        def request_database_names(security_origin:)
          @devtools.send('IndexedDB.requestDatabaseNames',
                         securityOrigin: security_origin)
        end

      end # IndexedDB
    end # DevTools
  end # WebDriver
end #Selenium
