module Api
    module V1
        class DiseasesController < ApplicationController
            def index
                _symptoms = params['symptoms'].upcase
                _age = params['age'].to_i

                if _age >=0 && _age<=3 then 
                    return_toddler_disease(_symptoms)
                else
                    can_not_support_age
                end

            end

            def return_toddler_disease(_symptoms)

                _symptoms_arr = (_symptoms!=nil) ? _symptoms.split(','):nil
                _diseases = Disease.joins(:symptoms)
                    .where('UPPER(symptoms.name) in (?)', _symptoms_arr)
                #byebug

                if _diseases == nil || _diseases.length == 0 then
                   return  disease_not_found
                end

                _buttons = Array.new;
                _diseases.all.each do |_disease|
                    _str = {
                        title: _disease.name,
                        type: 'web_url',
                        value: _disease.url
                    }
                    _buttons.push _str
                end


                _replies = [
                    {
                        type: 'card',
                        content: {
                          title: 'These symptoms could match to the following diseases in children. Please click for the treatment options.',
                          buttons: _buttons
                        }
                      }
                   
                ]

                render_response(_replies)

            end

            def can_not_support_age

                  _replies = [{
                      type: 'text',
                      content: 'Sorry we can only identify symptoms for toddlers less than 3 years of age'
                  }]

                  render_response(_replies)

            end

            def disease_not_found

                _replies = [{
                    type: 'text',
                    content: 'Sorry we are unable to identify a disease with these symptoms.  Please try after sometime. Meanwhile you can try searching in CDC website - https://www.cdc.gov/ncbddd/childdevelopment/positiveparenting/toddlers.html'
                }]

                render_response(_replies)

          end

            def render_response(_replies)

                render json: {
                    replies: _replies,
                    conversation: {
                      memory: {
                        key: 'value'
                      }
                    }
                  }, status: :ok

            end

        end
    end
end