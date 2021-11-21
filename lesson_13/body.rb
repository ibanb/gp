require 'date'

class Patient
    def initialize(name, patronic_name, first_name, date_of_birth, adress)
        @name = name
        @patronic_name = patronic_name
        @first_name = first_name
        @date_of_birth = Date.parse(date_of_birth)
        @adress = adress
    end

    def show_full
        return "#{@first_name} #{@name[0]}.#{@patronic_name[0]}\n#{@adress}."
    end

    def age
        today = Date.today
        result = today.year - @date_of_birth.year - 1
    
        if (today.month > @date_of_birth.month) ||
          (today.month == @date_of_birth.month &&
           today.day >= @date_of_birth.day)
          result += 1
        end
    
        return result
    end
end

class Address
    def initialize (territorial_entity, region, city, locality, street, building, flat)
      @territorial_entity = territorial_entity # субъект РФ
      @region = region # район
      @city = city # город
      @locality = locality # нас. пункт
      @street = street # улица
      @building = building # дом
      @flat = flat # квартира
  
      # Обратите внимание, что мы записали номер дома и квартиры как есть, не
      # переводя в числа, т.к. бывают дома с буквами (14к1) и даже квартиры с
      # буквами, например, 18а.
      #
      # Никто разработчику этого не скажет — должен сам подумать и решить (или
      # спросить)
    end
  
  
    def full_address
      # Нам надо выводить адрес вот в таком формате:
      #
      # ул. Сосновая, д. 15, кв. 1, пос. Лесное, Алексеевский р-он, Воронежская обл.
      #
      # Сначала улицу, потом дом, потом квартиру, потом населенный пункт, район и
      # регион РФ. Чтобы всё это собрать, заведем массив result и будем складывать
      # в него части для строки с адресом в нужном порядке. Если вдруг в какой-то
      # из переменной лежит nil или пустая строка, мы не будем добавлять её
      # в массив.
      result = []
  
      # Проверить, что в переменной лежит пустая строка, можно с помощью метода
      # `empty?`. Если в переменной nil, то метод to_s сделает из него пустую
      # строку.
      if !@street.to_s.empty?
        result << @street
      end
  
      if !@building.to_s.empty?
        result << "д. #{@building}"
      end
  
      if !@flat.to_s.empty?
       result << "кв. #{@flat}"
      end
  
      if !@locality.to_s.empty?
        result << @locality
      end
  
      if !@region.to_s.empty?
        result << @region
      end
  
      if !@territorial_entity.to_s.empty?
        result << @territorial_entity
      end
  
      # Склеим все элементы массива в строку, разделяя их запятой с помощью метода
      # join, которому в качестве параметра передадим ", ". Полученную строку
      # вернем в качестве ответа метода.
      return result.join(", ")
    end
end
  
  # ---
  
  # Создадим пару адресов (если у адреса нет, например, города, будем вместо него
  # передавать nil)
  address1 = Address.new("Ленинградская обл.", "Бологовский р-он", "Бологое", nil,  "ул. Ленина", 3, 84)
  address2 = Address.new("Воронежская обл.", "Алексеевский р-он", nil, "пос. Лесное",  "ул. Сосновая", 15, 1)
  

patient_1 = Patient.new("Ivan", "Petrovich", "Novikov", "01.06.1989", address1.full_address)
patient_2 = Patient.new("Petr", "Ivanovich", "Labuda", "03.08.2001", address2.full_address)



puts patient_1.show_full
puts "Age: #{patient_1.age}"
puts
puts patient_2.show_full
puts "Age: #{patient_2.age}"
