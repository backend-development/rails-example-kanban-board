json.extract! card, :id, :title, :status, :board_id, :created_at, :updated_at
json.url card_url(card, format: :json)