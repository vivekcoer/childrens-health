module Api
    module V1
        class DiseasesController < ApplicationController
            def index
                _symptoms = params['symptoms'].upcase
                _symptoms_arr = (_symptoms!=nil) ? _symptoms.split(','):nil
                #_diseases = Disease.order('name DESC')
                _diseases = Disease.joins(:symptoms)
                    .where('UPPER(symptoms.name) in (?)', _symptoms_arr)
                #byebug

                _buttons = Array.new;
                _diseases.all.each do |_disease|
                    _str = {
                        title: _disease.name,
                        type: 'web_url',
                        value: 'https://www.verywellhealth.com/thmb/s6E3tbnHTBJebfYPHPef4VS48R8=/3274x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/770484-article-img-influenza1-5a28469f482c520037628e11.png'
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