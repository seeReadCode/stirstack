module AssociationErrorDetailConcern
  extend ActiveSupport::Concern

  included do
    after_validation :replace_association_error_message
  end

  class_methods do
    def association_names
      @association_names ||= reflect_on_all_associations.map(&:name)
    end
  end

  # rubocop:disable Metrics/AbcSize
  def replace_association_error_message
    self.class.association_names.each do |attr|
      next unless errors[attr]

      errors.delete(attr)
      Array.wrap(public_send(attr)).each_with_index do |record, i|
        next if record.errors.empty?

        attr_index_s = [attr.to_s, '_', i.to_s].join.to_sym
        errors.add(attr_index_s, record.errors.messages)
      end
    end
  end
  # rubocop:enable Metrics/AbcSize
end
