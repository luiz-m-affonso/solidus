# frozen_string_literal: true

class SolidusAdmin::RefundsAndReturns::Component < SolidusAdmin::BaseComponent
  include SolidusAdmin::Layout::PageHelpers
  renders_one :actions

  def initialize(current_class:)
    @current_class = current_class
  end

  def tabs
    {
      Spree::RefundReason => solidus_admin.refund_reasons_path,
      Spree::ReimbursementType => solidus_admin.reimbursement_types_path,
      Spree::ReturnReason => solidus_admin.return_reasons_path,
      Spree::AdjustmentReason => solidus_admin.adjustment_reasons_path,
      Spree::StoreCreditReason => solidus_admin.store_credit_reasons_path,
    }
  end
end
