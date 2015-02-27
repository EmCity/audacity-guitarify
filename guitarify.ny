;nyquist plug-in 
;version 3 
;codetype sal 
;type process
;name "SWagner:Guitarify" 
;action "Guitarify" 
;info "by Sebastian Wagner. Released under the GPL v2" 

;; guitarify.ny by Sebastian Wagner
;; February 2015
;; Released under terms of the GNU General Public License version 2:
;; http://www.gnu.org/licenses/old-licenses/gpl-2.0.html
;; Convert any sound to a guitar-like sound with slight disortion

define function my-instrument(pitch: 60, im: const(0,1), fac: 1, dur: 10) 
begin
    return fmosc(pitch, fac * fmlfo(im)) * pluck(pitch, dur)
end

define function main()
begin
    return my-instrument() * s * 9.0
end

