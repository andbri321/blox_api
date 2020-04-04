class BloxesController < ApplicationController

  def index
    @bloxes = {knowledge_area: 
      Blox.group(:knowledge_area_id).count(:knowledge_area_id).transform_keys!{ |key| KnowledgeArea.find(key).name } 
    }
    @bloxes.merge!( {functional_area:
     Blox.group(:functional_area_id).count(:functional_area_id).transform_keys!{ |key| FunctionalArea.find(key).name } 
    })
    @bloxes.merge!( {blox_profile:
      Blox.group(:blox_profile_id).count(:blox_profile_id).transform_keys!{ |key| BloxProfile.find(key).name } 
    })
    @bloxes.merge!( {cycle:
      Blox.group(:cycle_id).count(:cycle_id).transform_keys!{ |key| Cycle.find(key).name } 
    })
    @bloxes.merge!( {shift:
      Blox.group(:shift_id).count(:shift_id).transform_keys!{ |key| Shift.find(key).name } 
    })

    respond_to do |format|
      format.json { render :json => @bloxes }
    end
  end
end
