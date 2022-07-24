class AnswersController < ApplicationController 

def create 
@question = Question.find(params[:question_id])
@answer = @question.answers.build(answers_params)
@answer.user = current_user 
@answer.save 

redirect_to question_path(@question)
end 

def destroy 
@question = Question.find(params[:question_id])
@answer = @question_answers.find(params[:id]).destroy

redirect_to question_path(@question) 
end 

private 

def answers_params 
params.require(:answer).permit(:content) 
end