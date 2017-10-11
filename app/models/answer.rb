class Answer < ApplicationRecord
  belongs_to :question
  after_initialize :default_values

  private
    def default_values
      self.correct_answer ||= 10
    end
end
