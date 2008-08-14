module FotoVerite
  class USPS
    def initialize(username)
      @username = validate(username)
    end

    def validate(param)
      raise ERROR_MSG if param.blank?
      param
    end
    include FotoVerite::Tracking
    include FotoVerite::Shipping
    include FotoVerite::DeliveryConfirmation
    include FotoVerite::ServiceStandard
    include FotoVerite::OpenDistrubutePriority
    include FotoVerite::ElectricMerchandisReturn
    include FotoVerite::ExpressMail
    include FotoVerite::AddressVerification
    
  end
end
