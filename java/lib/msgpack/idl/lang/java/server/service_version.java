#{format_package("server")}

import java.util.Map;
import java.util.HashMap;
import java.io.IOException;
import org.msgpack.MessageTypeException;
import org.msgpack.rpc.dispatcher.Dispatcher;
import org.msgpack.rpc.Request;
import static #{@message_class}.*;

public class #{@name} implements Dispatcher {
	<?rb @functions.each {|f| ?>
	public interface I#{f.name} {
		public #{format_type(f.return_type)} #{f.name}(A#{f.name} args);
	}
	<?rb } ?>

	<?rb @functions.each {|f| ?>
	public void set#{f.name.capitalize}(I#{f.name} #{f.name}) {
		this.#{f.name} = #{f.name};
	}
	public I#{f.name} get#{f.name.capitalize}() {
		return this.#{f.name};
	}
	<?rb } ?>

	public void set(Object o) {
		<?rb @functions.each {|f| ?>
		if(o instanceof I#{f.name}) {
			this.set#{f.name.capitalize}((I#{f.name})o);
		}
		<?rb } ?>
	}

	<?rb @functions.each {|f| ?>
	private I#{f.name} #{f.name};
	<?rb } ?>


	private HashMap<String, Dispatcher> dispatchTable;

	public #{@name}() {
		this.dispatchTable = new HashMap<String, Dispatcher>();
		<?rb functions.each {|f| ?>
			this.dispatchTable.put("#{f.name}", new Dispatcher() {
				public void dispatch(Request request) throws Exception {
					A#{f.name} args = new A#{f.name}();
					args.messageConvert(request.getArguments());
					<?rb if f.return_type.void_type? ?>
						#{f.name}.#{f.name}(args);
						request.sendResult(null);
					<?rb else ?>
						#{format_type(f.return_type)} r = #{f.name}.#{f.name}(args);
						request.sendResult(r);
					<?rb end ?>
				}
			});
		<?rb } ?>
	}

	public void dispatch(Request request) throws Exception {
		dispatch(request.getMethodName(), request);
	}

	public void dispatch(String methodName, Request request) throws Exception {
		Dispatcher dp = this.dispatchTable.get(methodName);
		if(dp == null) {
			throw new MessageTypeException("FIXME");
		}
		dp.dispatch(request);
	}
}

