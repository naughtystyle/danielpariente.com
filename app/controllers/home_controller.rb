class HomeController < ApplicationController
  def index
  end

  def resume
    send_file(
      "#{Rails.root}/app/assets/files/resume.pdf",
      filename: "resume.pdf",
      type: "application/pdf"
    )
  end

  def flashcards
  end
end