class MentalHealth < ApplicationRecord
    CONST MOOD_TREE = {
        :happy => {
            :playful => [:aroused, :cheeky],
            :content => [:free, :joyful],
            :interested => [:curious, :inquisitive],
            :proud => [:successful, :confident],
            :accepted => [:respected, :valued],
            :powerful => [:courageous, :creative],
            :peaceful => [:loving, :thankful],
            :trusting => [:sensitive, :intimate],
            :optimistic => [:hopeful, :inspired]
        },
        :surprised => {
            :startled => [:shocked, :dismayed],
            :confused => [:disillusioned, :perplexed],
            :amazed =>  [:astonished, :dazzled],
            :excited => [:thrilled, :energetic]
        },
        :bad => {
             :bored => [:apathetic, :indifferent],
             :busy => [:pressured, :rushed],
             :stressed => [:overwhelmed, :out_of_control],
             :tired => [:unfocused, :sleepy]
        },
        :fearful => {
            :scared => [:helpless, :frightened],
            :anxious => [:overwhelmed, :worried],
            :insecure => [:inadequate, :incompetent],
            :weak => [:inferior, :powerless],
            :rejected => [:excluded, :unloved],
            :threatened => [:vulnerable, :nervous]
        },
        :angry => {
            :let_down => [:betrayted, :disrespected],
            :humiliated => [:disrespected, :ridiculed], 
            :bitter => [:indignant, :violated],
            :mad => [:furious, :jealous],
            :aggressive => [:provoked, :hostile],
            :frustrated => [:infuriated, :annoyed],
            :distant => [:withdrawn, :numb].
            :crticial => [:sceptical, :dismissive]
        },
        :disgusted => {
            :disapproving => [:embarassed, :judgemental],
            :disappointed => [:appalled, :revolted],
            :awful => [:nauseated, :detestable],
            :repelled => [:horrified, :hesistant]
        },
        :sad => {
            :lonely => [:isolated, :abandoned],
            :vulnerable => [:victimized, :fragile],
            :despair => [:grief, :hopeless],
            :guilty => [:ashamed, :remorseful],
            :depressed => [:empty, :inferior],
            :hurt => [:disappointed, :embarassed]
        }
    }.freeze

    belongs_to :user

    validates :user_id, presence: true 
    validates :date, presence: true
end
