#
# MessagePack IDL Processor
#
# Copyright (C) 2011 FURUHASHI Sadayuki
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
#
module MessagePack
module IDL


class GeneratorModule
	include ProcessorModule

	def self.generate(ir, out)
		new(ir, out).generate!
	end
end


class Generator
	include ProcessorModule

	GENERATORS = {}

	def self.register(lang, impl)
		GENERATORS[lang.to_s] = impl
	end

	def initialize
	end

	def self.available?(lang)
		GENERATORS.has_key?(lang)
	end

	def generate(lang, ir, outdir)
		gen = GENERATORS[lang]
		unless gen
			raise IDLError, "generator not found: #{lang}"
		end
		gen.generate(ir, outdir)
	end
end


end
end
