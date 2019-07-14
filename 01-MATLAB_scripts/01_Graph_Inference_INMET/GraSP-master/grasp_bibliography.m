%Lists bibliography references to cite, including those from optional
%toolboxes.
%
%   GRASP_BIBLIOGRAPHY() lists all optional toolboxes that have been
%   started, along with URLs to the properly cite the work.
%
% Authors:
%  - Benjamin Girault <benjamin.girault@usc.edu>

% Copyright Benjamin Girault, University of Sourthern California, Los
% Angeles, California, USA (2016-2018)
% 
% benjamin.girault@usc.edu
% 
% This software is a computer program whose purpose is to provide a Matlab
% / Octave toolbox for handling and displaying graph signals.
% 
% This software is governed by the CeCILL license under French law and
% abiding by the rules of distribution of free software.  You can  use, 
% modify and/ or redistribute the software under the terms of the CeCILL
% license as circulated by CEA, CNRS and INRIA at the following URL
% "http://www.cecill.info". 
% 
% As a counterpart to the access to the source code and  rights to copy,
% modify and redistribute granted by the license, users are provided only
% with a limited warranty  and the software's author,  the holder of the
% economic rights,  and the successive licensors  have only  limited
% liability. 
% 
% In this respect, the user's attention is drawn to the risks associated
% with loading,  using,  modifying and/or developing or reproducing the
% software by the user in light of its specific status of free software,
% that may mean  that it is complicated to manipulate,  and  that  also
% therefore means  that it is reserved for developers  and  experienced
% professionals having in-depth computer knowledge. Users are therefore
% encouraged to load and test the software's suitability as regards their
% requirements in conditions enabling the security of their systems and/or 
% data to be ensured and,  more generally, to use and operate it in the 
% same conditions as regards security. 
% 
% The fact that you are presently reading this means that you have had
% knowledge of the CeCILL license and that you accept its terms.

function grasp_bibliography()
    global GRASP_OPT_TOOLS
    fprintf('GraSP: https://doi.org/10.1109/ICASSP.2017.8005300 -- https://gforge.inria.fr/projects/grasp/\n');
    
    opt_tools = grasp_start_opt_3rd_party(0);
    for i = 1:numel(GRASP_OPT_TOOLS)
        if GRASP_OPT_TOOLS(i)
            fprintf('%s: %s\n', opt_tools(i).name, opt_tools(i).url);
        end
    end
end