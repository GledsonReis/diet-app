module Authed
  class PagesController < AuthedController
    def dashboard
      if current_user.diet.present?
        labels = current_user.weights.limit(6).order(:created_at).map do |weight|
          l(weight.created_at, format: :date_only)
        end
        weights = current_user.weights.limit(6).order(:created_at).map(&:value)
        ideal = Array.new(6) { |_index| current_user.diet.ideal_weight }
        @data = {
          labels: labels,
          datasets: [
            {
              label: 'Ideal',
              data: ideal,
              borderColor: 'rgba(5,146,3,1)',
              tension: 0.4,
              fill: false
            },
            {
              label: 'Atual',
              data: weights,
              borderColor: 'rgba(251,99,64,1)',
              tension: 0.4,
              fill: false
            }
          ]
        }
      end
    end

    def diet
      @diet = current_user.diet
    end
  end
end
