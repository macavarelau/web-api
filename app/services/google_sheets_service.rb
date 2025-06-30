require 'google/apis/sheets_v4'
require 'google/apis/drive_v3'

class GoogleSheetsService
  def initialize
    @service = Google::Apis::SheetsV4::SheetsService.new
    
    # Configure authorization
    credentials = JSON.parse(ENV['GOOGLE_CREDENTIALS'])
    authorization = Google::Auth::ServiceAccountCredentials.make_creds(
      json_key_io: StringIO.new(credentials.to_json),
      scope: [
        'https://www.googleapis.com/auth/spreadsheets',
        'https://www.googleapis.com/auth/drive.readonly'
      ]
    )
    @service.authorization = authorization
  end

  def get_sheet_data(spreadsheet_id, range)
    response = @service.get_spreadsheet_values(spreadsheet_id, range)
    response.values || []
  end

  def update_cell(spreadsheet_id, range, value)
    value_range = Google::Apis::SheetsV4::ValueRange.new(values: [[value]])
    @service.update_spreadsheet_value(spreadsheet_id, range, value_range, value_input_option: 'USER_ENTERED')
  end
end 