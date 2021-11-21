
class Question
    def initialize(text, answer, points)
        @text = text
        @answer = answer
        @points = points
    end

    def get_text
        return @text
    end

    def get_answer
        return @answer
    end

    def get_points
        return @points
    end
end

def create_question_object
    path = Dir["*.txt", base: "#{__dir__}/data"]
    questions = []
    answers = []
    score = []

    path.each do |file_name|
        file = File.new("#{__dir__}/data/" + file_name, "r:UTF-8")
        lines = file.readlines
        file.close
        questions << lines[0]
        answers << lines[1]
        score << lines[2]
    end

    scope_question_objects = []
    count = 0;
    while (count < questions.size)
        scope_question_objects << Question.new(questions[count], answers[count], score[count])
        count += 1
    end

    return scope_question_objects
end

def ask(scope)
    ful_score = 0;
    count_right_answer = 0

    scope.each_with_index do |question, index|
        puts "Question-#{index+1} #{question.get_text}"
        user_answer = STDIN.gets.chomp
       
        if (user_answer.to_i == question.get_answer.to_i)
            puts "You right!"
            ful_score += question.get_points.to_i
            count_right_answer += 1
        else
            puts "Wrong! Rigth answer - #{question.get_answer}"
        end
    end
    
    puts "Your right answer: #{count_right_answer} / 5"
    puts "Your general points : #{ful_score}"
end

ask(create_question_object())



