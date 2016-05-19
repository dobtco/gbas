class Views::Home::Index < Views::Layouts::Application
  def main
    div(class: 'home_sections') {
      section(class: 'home_section home_section_primary') {
        div(class: 'home_section_inner') {
          img src: image_path('hhs_logo'), alt: 'HHS Logo', class: 'home_logo'
          h1 'HHS GBAS'
          p(class: 'home_tagline') {
            text 'Inspirational tagline here'
          }
          p(class: 'home_get_reminded') {
            text 'Get reminded when applications open.'
          }
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
          div(class: 'home_alt_trigger') {
            a 'Are you an HHS program lead? Sign up for GBAS here.',
              href: 'https://hhs-gbas.forms.fm/program-signup'
          }
        }
      }

      section(class: 'home_section home_section_text') {
        div(class: 'home_section_inner') {
          h2 'What is GBAS?'
          p %{
            <strong>Global Bidding & Assignment System (GBAS):</strong>
            The current system to recruit, maintain, and deploy a specialized global public health workforce is not flexible enough to meet the expanding global mandates of the Department of Health and Human Services (HHS). The Global Bidding and Assignment System (GBAS), a specialized system for global recruitment, assessment, bidding, training, and assignment, has shown early promise during its pilot.  GBAS is filling overseas global public health vacancies, developing a pool of qualified and cleared staff ready for deployment, providing additional staffing options for programs, while building a unifying workforce strategy across the Department.  The project is a joint effort of pooled resources from across the Department.
          }.squish.html_safe
        }
      }

      section(class: 'home_section home_section_text') {
        div(class: 'home_section_inner') {
          h2 'The Innovation'
          p %{
            GBAS 2.0 expects to launch by September 2016 and include external applicants and promotions for federal staff. The team is working to secure HHS-wide integrated IT tools to manage the process from hiring through deployment, including:  tracking applications, scheduling and implementing competency-based  assessments, global program position registration, front-loading medical and security clearances, and bidding for, and paneling of, position assignments.  These integrated tools should synchronize processes with USAStaffing, including training materials for users.
          }.squish

          h3 'Project Plan & Scope'
          p %{
            GBAS will strengthen HHS’s capacity to meet expanding public health security, protection, product safety, and research mandates, by reducing the frequency and duration of vacancies, gaining efficiencies through batching applications, assessments, bidding, selection, clearances, and training for international assignments across HHS, while building a pool of vetted staff ready to accept positions when vacancies arise.
          }
        }
      }

      section(class: 'home_section home_section_text') {
        div(class: 'home_section_inner') {
          h2 'The Team'

          ul(class: 'home_team grid') {
            team_members.each do |member|
              li(class: 'item') {
                img src: '//placehold.it/250x250' #image_path("team/#{k.parameterize.underscore}.jpg")
                span member[:name], class: 'home_team_name'
                span member[:position], class: 'home_team_position'
              }
            end
          }

          h3 'Contributing Partners'

          ul(class: 'formatted_list') {
            li 'Marilyn Duffoo CDC/HRO (Communication Lead)'
            li 'Paris Bannourah HHS/ASA/OHR (Assessment Lead)'
            li 'Janice Hiland HHS/OGA Contractor (Assignment Panel Lead)'
            li 'Tracy Hilliard CDC/HRO (Assessment Team)'
            li 'Jackie Smith, HHS/ASA/OHR (Assessment Team)'
            li 'Nicole Cundy CDC/HRO (Bidding and Assignment and IT Lead)'
            li 'Christine Jolley CDC/CGH (Information Session Lead)'
            li 'Semico Parson CDC/HRO (Admin Support)'
            li 'Victor Balaban CDC/CGH (Evaluation Lead)'
            li 'Winnie Mitchell SAMHSA/ (SAMHSA Lead)'
            li 'Robbin Ruffner CDC/HRO (Admin Support)'
            li 'Jacob Olivo OS/OGA (Position Registration Lead)'
            li 'Ricky KingChing FDA/OC (FDA HR Liaison)'
            li 'CAPT Abnnah Forbes CDC/HRO (Commissioned Corps Consultant)'
            li 'Randi Bretous FDA/OC (FDA HR Liaison)'
            li 'Jack Spencer CDC/CGH (Staff Advocate and Cadre Liaison)'
            li 'Christopher Stallard CDC/CGH (Staff Advocate)'
            li 'HR, Security, and Medical Teams from CDC, FDA, HRSA, NIH, CMS'
          }
        }
      }
    }
  end

  def team_members
    [
      { name: 'Matthew Brown', position: 'Project Lead, OGA Program Liaison' },
      { name: 'Raymona Ramsey', position: 'HR Lead' },
      { name: 'Suzanne Theroux', position: ' CDC Program Lead' },
      { name: 'Tina Harrison', position: 'FDA Program Lead' },
      { name: 'Raymond Goldstein', position: 'HRSA Lead' }
    ]
  end
end
