module Api
    module V1
        class TreatmentsController < ApplicationController

            def create
                _conversation = params['conversation']
                _nlp = params['nlp']
                _memory = _conversation['memory']

                _disease = _memory["disease"].upcase
                _age = _memory["age"].to_i

                _disease_record = Disease.where('UPPER(diseases.name) = (?)', _disease)

                if _age >=0 && _age<=3 then 

                    _treatments = Treatment.joins(:diseases)
                    .where('UPPER(diseases.name) = (?)', _disease)

                    if _treatments == nil || _treatments.length == 0 then
                        return  treatment_not_found
                    end

                    return_treatment(_disease_record[0], _treatments) #there will be atleast 1 matched disease.
                else
                    can_not_support_age
                end

            end

            def return_treatment(_disease_record, _treatments)
                #byebug
                _disease_url = _disease_record.url 
                _content = Array.new
                _treatments.all.each do |_treatment|
                    _str = {
                        title: _treatment.name,
                        subtitle: "Treatment for " + _disease_record.name,
                        imageUrl: _treatment.url,
                        buttons: [
                          {
                            title: "More Information",
                            type:  "web_url",
                            value: _disease_url
                          }
                        ]
                      }
                    _content.push _str
                end


                _replies = [
                    {
                        type: 'carousel',
                        content: _content
                      }
                 ]

                render_response(_replies)

            end

            def return_treatment_buttons(_disease_record, _treatments)

                _buttons = Array.new;
                _treatments.all.each do |_treatment|
                    _str = {
                        title: _treatment.name,
                        type: 'web_url',
                        value: _treatment.url
                    }
                    _buttons.push _str
                end


                _replies = [
                    {
                        type: 'card',
                        content: {
                          title: 'This disease in infants and toddlers could be treated with the following treatments. Please click for the treatment options.',
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

            def treatment_not_found

                _replies = [{
                    type: 'text',
                    content: 'Sorry we are unable to find treament for this illness at this time.  Please try after sometime. Meanwhile you can try searching in CDC website - https://www.cdc.gov/ncbddd/childdevelopment/positiveparenting/toddlers.html'
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