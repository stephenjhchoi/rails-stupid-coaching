class CoachingController < ApplicationController
  def ask

  end


  def answer
    @myquestion = params[:query]
    @coach_answer = coach_answer(@myquestion)
  end

  def coach_answer(your_message)

   if your_message == "I am going to work right now!"
     return ""
   elsif your_message.include? "?"
     return "Silly question, get dressed and go to work!"
   else
     return "I don't care, get dressed and go to work!"
   end
  end

end
