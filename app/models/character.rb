class Character < ActiveRecord::Base
    belongs_to :universe
    attr_accessible :name, :description, :approach, :efficacy, :regard, :selfcontrol

  def self.Ary_approach
    [  
        [
            'Virtue', [
                   ['Initiative',1], ['contemplate',2], ['Resourceful',3], ['Creative',4], ['Perseverance',5]
                    ]
        ],     [
            'Vice', [
                 ['lethargy',1], ['neglect',2], ['stupid',3], ['uninspired',4], ['Inconstancy',5]
                ]
        ]
    ]
  end

  def self.Ary_efficacy 
    [  
      [
        'Virtue', [
          ['Courage',1], ['Patience',2], ['Humility',3], ['passion',4]
                  ]
      ],     [
        'Vice', [
          ['cowardice',1], ['intolerance',2], ['arrogance',3], ['indifference',4]
            ]
      ]
    ]
  end

  def self.Ary_regard
  [  
      [
          'Virtue', [
                ['Gratitude',1], ['righteousness',2], ['Tolerance ',3], ['Honesty',4]
                  ]
      ],     [
          'Vice', [
                ['disregard',1], ['bias',2], ['prejudice',3], ['treachery',4]
              ]
      ]
  ]
  end 

  def self.Ary_selfcontrol
      [
        [
        'Virtue', [
          ['Temperance','Temperance'], ['Frugality','Frugality'], ['Contentment','Contentment'], 
          ['Continence','Continence'], ['Fortitude','Fortitude'], ['Integrity','Integrity']
                  ]
        ],
        [
        'Vice', [
        ['Intemperance''Intemperance'], ['Excess','Excess'], ['Resentment','Resentment'], 
        ['Extravagance','Extravagance'], ['Discomposure','Discomposure'], ['Corruption','Corruption']
              ]
        ]
      ]
  end   
end
