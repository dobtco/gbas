class Views::Home::Index < Views::Layouts::Application
  def main
    div(class: 'home_sections') {
      section(class: 'home_section home_section_primary') {
        div(class: 'home_section_inner') {
          img src: image_path('logos/hhs.png'), alt: 'HHS Logo', class: 'home_logo'
          h1 t('home.title_html')
          p t('home.get_reminded'), class: 'home_get_reminded'
          form(class: 'home_subscribe_form') {
            div(class: 'grid') {
              div(class: 'item lap_eight_columns') {
                input type: 'email', placeholder: 'Enter your email address', class: 'large'
              }
              div(class: 'item lap_four_columns') {
                button 'Remind me', class: 'button info large block', 'data-loading-text' => 'Submitting…'
              }
            }
          }
          div t('home.hhs_program_lead_html'), class: 'home_alt_trigger'
        }
      }

      section(class: 'home_section home_section_text') {
        div(class: 'home_section_inner') {
          h2 t('home.what.title')
          p t('home.what.content_html')
        }
      }

      section(class: 'home_section home_section_text') {
        div(class: 'home_section_inner') {
          h2 t('home.innovation.title')
          p t('home.innovation.content_html')

          h3 t('home.project_plan.title')
          p t('home.project_plan.content_html')
        }
      }

      section(class: 'home_section home_section_text') {
        div(class: 'home_section_inner') {
          h2 t('home.questions.title')
          p t('home.questions.content_html')

          # h2 'The Team'

          # ul(class: 'home_team grid') {
          #   t('home.team').each do |member|
          #     li(class: 'item') {
          #       img src: '//placehold.it/250x250', alt: "Photo of #{member[:name]}" #image_path("team/#{k.parameterize.underscore}.jpg")
          #       span member[:name], class: 'home_team_name'
          #       span member[:position].html_safe, class: 'home_team_position'
          #     }
          #   end
          # }

          # h3 'Contributing Partners'

          # ul(class: 'team_partners grid') {
          #   t('home.partners').each do |partner|
          #     li(class: 'item') {
          #       strong partner[:name]
          #       span partner[:position]
          #     }
          #   end
          # }

          div(class: 'partner_logos grid') {
            %w(cdc hrsa nih samhsa).each do |x|
              li(class: 'item lap_three_columns') {
                img src: asset_path("logos/#{x}.png"), alt: "Logo for #{x.upcase}"
              }
            end
          }
        }
      }
    }
  end

  def team_members
    t('home.team')
  end
end
