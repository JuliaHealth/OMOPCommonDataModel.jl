module OMOPCommonDataModel

import Dates
import DocStringExtensions

export CDMType

include("types.jl")
include("version.jl")

include("Generate/Generate.jl")
include("version-utils.jl")
if cdm_version() ≥ v"5.4"
    include("Generate/Outfiles/5.4.jl")
else
    include("Generate/Outfiles/5.3.jl")
end

end # end module OMOPCommonDataModel
